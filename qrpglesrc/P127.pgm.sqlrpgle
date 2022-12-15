**free

ctl-opt dftactgrp(*no);

dcl-pi P127;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'

dcl-ds T201 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T201 FROM T201 LIMIT 1;

theCharVar = 'Hello from P127';
dsply theCharVar;
P3();
P113();
P24();
return;