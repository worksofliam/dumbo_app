**free

ctl-opt dftactgrp(*no);

dcl-pi P2674;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P693.rpgleinc'
/copy 'qrpgleref/P1021.rpgleinc'

dcl-ds theTable extname('T990') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T990 LIMIT 1;

theCharVar = 'Hello from P2674';
dsply theCharVar;
P67();
P693();
P1021();
return;