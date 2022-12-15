**free

ctl-opt dftactgrp(*no);

dcl-pi P639;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P308.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P425.rpgleinc'

dcl-ds theTable extname('T1245') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1245 LIMIT 1;

theCharVar = 'Hello from P639';
dsply theCharVar;
P308();
P128();
P425();
return;