**free

ctl-opt dftactgrp(*no);

dcl-pi P276;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'

dcl-ds T1232 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1232 FROM T1232 LIMIT 1;

theCharVar = 'Hello from P276';
dsply theCharVar;
P233();
P115();
P204();
return;