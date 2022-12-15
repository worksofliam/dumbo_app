**free

ctl-opt dftactgrp(*no);

dcl-pi P1274;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1049.rpgleinc'
/copy 'qrpgleref/P580.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'

dcl-ds T407 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T407 FROM T407 LIMIT 1;

theCharVar = 'Hello from P1274';
dsply theCharVar;
P1049();
P580();
P149();
return;