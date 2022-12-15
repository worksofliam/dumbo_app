**free

ctl-opt dftactgrp(*no);

dcl-pi P3373;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3316.rpgleinc'
/copy 'qrpgleref/P664.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'

dcl-ds T1146 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1146 FROM T1146 LIMIT 1;

theCharVar = 'Hello from P3373';
dsply theCharVar;
P3316();
P664();
P204();
return;