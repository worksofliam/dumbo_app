**free

ctl-opt dftactgrp(*no);

dcl-pi P316;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'

dcl-ds theTable extname('T193') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T193 LIMIT 1;

theCharVar = 'Hello from P316';
dsply theCharVar;
P189();
P167();
P305();
return;