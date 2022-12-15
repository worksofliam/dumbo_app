**free

ctl-opt dftactgrp(*no);

dcl-pi P3021;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P373.rpgleinc'
/copy 'qrpgleref/P2784.rpgleinc'

dcl-ds theTable extname('T1067') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1067 LIMIT 1;

theCharVar = 'Hello from P3021';
dsply theCharVar;
P238();
P373();
P2784();
return;