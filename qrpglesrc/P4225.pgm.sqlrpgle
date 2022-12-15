**free

ctl-opt dftactgrp(*no);

dcl-pi P4225;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2283.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'
/copy 'qrpgleref/P1055.rpgleinc'

dcl-ds theTable extname('T721') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T721 LIMIT 1;

theCharVar = 'Hello from P4225';
dsply theCharVar;
P2283();
P379();
P1055();
return;