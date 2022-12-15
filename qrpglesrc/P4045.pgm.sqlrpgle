**free

ctl-opt dftactgrp(*no);

dcl-pi P4045;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1822.rpgleinc'
/copy 'qrpgleref/P1999.rpgleinc'
/copy 'qrpgleref/P2722.rpgleinc'

dcl-ds T750 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T750 FROM T750 LIMIT 1;

theCharVar = 'Hello from P4045';
dsply theCharVar;
P1822();
P1999();
P2722();
return;