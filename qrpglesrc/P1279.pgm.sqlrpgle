**free

ctl-opt dftactgrp(*no);

dcl-pi P1279;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P1184.rpgleinc'
/copy 'qrpgleref/P1197.rpgleinc'

dcl-ds T756 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T756 FROM T756 LIMIT 1;

theCharVar = 'Hello from P1279';
dsply theCharVar;
P34();
P1184();
P1197();
return;