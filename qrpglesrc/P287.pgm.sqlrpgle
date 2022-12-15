**free

ctl-opt dftactgrp(*no);

dcl-pi P287;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'

dcl-ds T780 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T780 FROM T780 LIMIT 1;

theCharVar = 'Hello from P287';
dsply theCharVar;
P24();
P70();
P30();
return;