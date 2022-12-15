**free

ctl-opt dftactgrp(*no);

dcl-pi P1534;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1027.rpgleinc'
/copy 'qrpgleref/P930.rpgleinc'
/copy 'qrpgleref/P1238.rpgleinc'

dcl-ds T908 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T908 FROM T908 LIMIT 1;

theCharVar = 'Hello from P1534';
dsply theCharVar;
P1027();
P930();
P1238();
return;