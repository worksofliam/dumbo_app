**free

ctl-opt dftactgrp(*no);

dcl-pi P2039;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1745.rpgleinc'
/copy 'qrpgleref/P1060.rpgleinc'
/copy 'qrpgleref/P926.rpgleinc'

dcl-ds T195 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T195 FROM T195 LIMIT 1;

theCharVar = 'Hello from P2039';
dsply theCharVar;
P1745();
P1060();
P926();
return;