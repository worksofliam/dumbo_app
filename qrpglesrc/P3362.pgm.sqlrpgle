**free

ctl-opt dftactgrp(*no);

dcl-pi P3362;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2807.rpgleinc'
/copy 'qrpgleref/P2970.rpgleinc'
/copy 'qrpgleref/P3028.rpgleinc'

dcl-ds T1034 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1034 FROM T1034 LIMIT 1;

theCharVar = 'Hello from P3362';
dsply theCharVar;
P2807();
P2970();
P3028();
return;