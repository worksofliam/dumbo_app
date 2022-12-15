**free

ctl-opt dftactgrp(*no);

dcl-pi P1016;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P449.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'

dcl-ds T254 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T254 FROM T254 LIMIT 1;

theCharVar = 'Hello from P1016';
dsply theCharVar;
P449();
P739();
P70();
return;