**free

ctl-opt dftactgrp(*no);

dcl-pi P1610;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P323.rpgleinc'
/copy 'qrpgleref/P1415.rpgleinc'
/copy 'qrpgleref/P602.rpgleinc'

dcl-ds T1267 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1267 FROM T1267 LIMIT 1;

theCharVar = 'Hello from P1610';
dsply theCharVar;
P323();
P1415();
P602();
return;