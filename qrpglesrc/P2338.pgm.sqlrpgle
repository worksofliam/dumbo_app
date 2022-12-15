**free

ctl-opt dftactgrp(*no);

dcl-pi P2338;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2333.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P237.rpgleinc'

dcl-ds T841 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T841 FROM T841 LIMIT 1;

theCharVar = 'Hello from P2338';
dsply theCharVar;
P2333();
P173();
P237();
return;