**free

ctl-opt dftactgrp(*no);

dcl-pi P3301;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2939.rpgleinc'
/copy 'qrpgleref/P1274.rpgleinc'
/copy 'qrpgleref/P1921.rpgleinc'

dcl-ds T1225 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1225 FROM T1225 LIMIT 1;

theCharVar = 'Hello from P3301';
dsply theCharVar;
P2939();
P1274();
P1921();
return;