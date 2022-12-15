**free

ctl-opt dftactgrp(*no);

dcl-pi P3251;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2056.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'

dcl-ds T1080 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1080 FROM T1080 LIMIT 1;

theCharVar = 'Hello from P3251';
dsply theCharVar;
P2056();
P281();
P204();
return;