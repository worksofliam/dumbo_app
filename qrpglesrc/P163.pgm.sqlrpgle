**free

ctl-opt dftactgrp(*no);

dcl-pi P163;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'

dcl-ds T1317 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1317 FROM T1317 LIMIT 1;

theCharVar = 'Hello from P163';
dsply theCharVar;
P103();
P162();
P100();
return;