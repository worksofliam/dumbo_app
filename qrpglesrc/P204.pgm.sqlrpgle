**free

ctl-opt dftactgrp(*no);

dcl-pi P204;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T272') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T272 LIMIT 1;

theCharVar = 'Hello from P204';
dsply theCharVar;
P75();
P169();
P28();
return;