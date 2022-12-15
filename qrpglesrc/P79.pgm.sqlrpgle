**free

ctl-opt dftactgrp(*no);

dcl-pi P79;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'

dcl-ds T113 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T113 FROM T113 LIMIT 1;

theCharVar = 'Hello from P79';
dsply theCharVar;
P63();
P50();
P70();
return;