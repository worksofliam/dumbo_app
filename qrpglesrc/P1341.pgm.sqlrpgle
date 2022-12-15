**free

ctl-opt dftactgrp(*no);

dcl-pi P1341;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1168.rpgleinc'
/copy 'qrpgleref/P644.rpgleinc'
/copy 'qrpgleref/P1119.rpgleinc'

dcl-ds T1181 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1181 FROM T1181 LIMIT 1;

theCharVar = 'Hello from P1341';
dsply theCharVar;
P1168();
P644();
P1119();
return;