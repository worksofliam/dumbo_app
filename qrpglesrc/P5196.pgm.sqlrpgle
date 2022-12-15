**free

ctl-opt dftactgrp(*no);

dcl-pi P5196;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2016.rpgleinc'
/copy 'qrpgleref/P4703.rpgleinc'
/copy 'qrpgleref/P4557.rpgleinc'

dcl-ds T1379 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1379 FROM T1379 LIMIT 1;

theCharVar = 'Hello from P5196';
dsply theCharVar;
P2016();
P4703();
P4557();
return;