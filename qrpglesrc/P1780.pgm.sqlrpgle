**free

ctl-opt dftactgrp(*no);

dcl-pi P1780;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P527.rpgleinc'
/copy 'qrpgleref/P1091.rpgleinc'
/copy 'qrpgleref/P1327.rpgleinc'

dcl-ds T1550 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1550 FROM T1550 LIMIT 1;

theCharVar = 'Hello from P1780';
dsply theCharVar;
P527();
P1091();
P1327();
return;