**free

ctl-opt dftactgrp(*no);

dcl-pi P4626;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3122.rpgleinc'
/copy 'qrpgleref/P2300.rpgleinc'
/copy 'qrpgleref/P2541.rpgleinc'

dcl-ds T1157 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1157 FROM T1157 LIMIT 1;

theCharVar = 'Hello from P4626';
dsply theCharVar;
P3122();
P2300();
P2541();
return;