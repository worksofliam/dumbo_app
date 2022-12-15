**free

ctl-opt dftactgrp(*no);

dcl-pi P316;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'

dcl-ds theTable extname('T838') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T838 LIMIT 1;

theCharVar = 'Hello from P316';
dsply theCharVar;
P3();
P271();
P158();
return;