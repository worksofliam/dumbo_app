**free

ctl-opt dftactgrp(*no);

dcl-pi P2669;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2119.rpgleinc'
/copy 'qrpgleref/P1934.rpgleinc'
/copy 'qrpgleref/P2428.rpgleinc'

dcl-ds T170 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T170 FROM T170 LIMIT 1;

theCharVar = 'Hello from P2669';
dsply theCharVar;
P2119();
P1934();
P2428();
return;