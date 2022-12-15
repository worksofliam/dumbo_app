**free

ctl-opt dftactgrp(*no);

dcl-pi P1195;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1079.rpgleinc'
/copy 'qrpgleref/P1027.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'

dcl-ds T1241 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1241 FROM T1241 LIMIT 1;

theCharVar = 'Hello from P1195';
dsply theCharVar;
P1079();
P1027();
P114();
return;