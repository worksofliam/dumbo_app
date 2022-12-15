**free

ctl-opt dftactgrp(*no);

dcl-pi P5183;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1921.rpgleinc'
/copy 'qrpgleref/P4245.rpgleinc'
/copy 'qrpgleref/P4246.rpgleinc'

dcl-ds theTable extname('T515') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T515 LIMIT 1;

theCharVar = 'Hello from P5183';
dsply theCharVar;
P1921();
P4245();
P4246();
return;