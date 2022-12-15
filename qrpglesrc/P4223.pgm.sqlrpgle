**free

ctl-opt dftactgrp(*no);

dcl-pi P4223;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3621.rpgleinc'
/copy 'qrpgleref/P615.rpgleinc'
/copy 'qrpgleref/P3130.rpgleinc'

dcl-ds T1300 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1300 FROM T1300 LIMIT 1;

theCharVar = 'Hello from P4223';
dsply theCharVar;
P3621();
P615();
P3130();
return;