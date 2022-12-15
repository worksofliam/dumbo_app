**free

ctl-opt dftactgrp(*no);

dcl-pi P1474;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1051.rpgleinc'
/copy 'qrpgleref/P1410.rpgleinc'
/copy 'qrpgleref/P1395.rpgleinc'

dcl-ds T1493 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1493 FROM T1493 LIMIT 1;

theCharVar = 'Hello from P1474';
dsply theCharVar;
P1051();
P1410();
P1395();
return;