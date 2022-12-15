**free

ctl-opt dftactgrp(*no);

dcl-pi P933;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P745.rpgleinc'
/copy 'qrpgleref/P614.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds theTable extname('T619') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T619 LIMIT 1;

theCharVar = 'Hello from P933';
dsply theCharVar;
P745();
P614();
P19();
return;