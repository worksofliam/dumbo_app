**free

ctl-opt dftactgrp(*no);

dcl-pi P4043;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3096.rpgleinc'
/copy 'qrpgleref/P1329.rpgleinc'
/copy 'qrpgleref/P1178.rpgleinc'

dcl-ds T1577 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1577 FROM T1577 LIMIT 1;

theCharVar = 'Hello from P4043';
dsply theCharVar;
P3096();
P1329();
P1178();
return;