**free

ctl-opt dftactgrp(*no);

dcl-pi P4628;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P898.rpgleinc'
/copy 'qrpgleref/P1048.rpgleinc'
/copy 'qrpgleref/P3593.rpgleinc'

dcl-ds T1151 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1151 FROM T1151 LIMIT 1;

theCharVar = 'Hello from P4628';
dsply theCharVar;
P898();
P1048();
P3593();
return;