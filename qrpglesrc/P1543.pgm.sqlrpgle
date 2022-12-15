**free

ctl-opt dftactgrp(*no);

dcl-pi P1543;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P535.rpgleinc'
/copy 'qrpgleref/P1084.rpgleinc'
/copy 'qrpgleref/P665.rpgleinc'

dcl-ds T1733 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1733 FROM T1733 LIMIT 1;

theCharVar = 'Hello from P1543';
dsply theCharVar;
P535();
P1084();
P665();
return;