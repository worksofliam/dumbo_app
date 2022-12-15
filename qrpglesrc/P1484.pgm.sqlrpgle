**free

ctl-opt dftactgrp(*no);

dcl-pi P1484;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P488.rpgleinc'
/copy 'qrpgleref/P939.rpgleinc'
/copy 'qrpgleref/P369.rpgleinc'

dcl-ds theTable extname('T82') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T82 LIMIT 1;

theCharVar = 'Hello from P1484';
dsply theCharVar;
P488();
P939();
P369();
return;