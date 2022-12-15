**free

ctl-opt dftactgrp(*no);

dcl-pi P1121;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P887.rpgleinc'
/copy 'qrpgleref/P790.rpgleinc'

dcl-ds theTable extname('T630') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T630 LIMIT 1;

theCharVar = 'Hello from P1121';
dsply theCharVar;
P158();
P887();
P790();
return;