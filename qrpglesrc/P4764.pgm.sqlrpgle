**free

ctl-opt dftactgrp(*no);

dcl-pi P4764;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4078.rpgleinc'
/copy 'qrpgleref/P2797.rpgleinc'
/copy 'qrpgleref/P2300.rpgleinc'

dcl-ds T865 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T865 FROM T865 LIMIT 1;

theCharVar = 'Hello from P4764';
dsply theCharVar;
P4078();
P2797();
P2300();
return;