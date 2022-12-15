**free

ctl-opt dftactgrp(*no);

dcl-pi P3387;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2003.rpgleinc'
/copy 'qrpgleref/P1948.rpgleinc'
/copy 'qrpgleref/P3290.rpgleinc'

dcl-ds theTable extname('T488') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T488 LIMIT 1;

theCharVar = 'Hello from P3387';
dsply theCharVar;
P2003();
P1948();
P3290();
return;