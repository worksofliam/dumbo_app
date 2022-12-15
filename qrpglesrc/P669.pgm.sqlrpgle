**free

ctl-opt dftactgrp(*no);

dcl-pi P669;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'
/copy 'qrpgleref/P423.rpgleinc'

dcl-ds T1692 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1692 FROM T1692 LIMIT 1;

theCharVar = 'Hello from P669';
dsply theCharVar;
P162();
P204();
P423();
return;