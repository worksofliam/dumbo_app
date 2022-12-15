**free

ctl-opt dftactgrp(*no);

dcl-pi P418;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P93.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'

dcl-ds T272 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T272 FROM T272 LIMIT 1;

theCharVar = 'Hello from P418';
dsply theCharVar;
P172();
P93();
P102();
return;