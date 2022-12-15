**free

ctl-opt dftactgrp(*no);

dcl-pi P3108;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1163.rpgleinc'
/copy 'qrpgleref/P322.rpgleinc'
/copy 'qrpgleref/P3001.rpgleinc'

dcl-ds theTable extname('T437') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T437 LIMIT 1;

theCharVar = 'Hello from P3108';
dsply theCharVar;
P1163();
P322();
P3001();
return;