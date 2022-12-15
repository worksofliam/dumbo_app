**free

ctl-opt dftactgrp(*no);

dcl-pi P2488;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P705.rpgleinc'
/copy 'qrpgleref/P616.rpgleinc'
/copy 'qrpgleref/P1300.rpgleinc'

dcl-ds theTable extname('T1246') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1246 LIMIT 1;

theCharVar = 'Hello from P2488';
dsply theCharVar;
P705();
P616();
P1300();
return;