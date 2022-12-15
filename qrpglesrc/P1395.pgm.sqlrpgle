**free

ctl-opt dftactgrp(*no);

dcl-pi P1395;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1025.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P675.rpgleinc'

dcl-ds T1639 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1639 FROM T1639 LIMIT 1;

theCharVar = 'Hello from P1395';
dsply theCharVar;
P1025();
P293();
P675();
return;