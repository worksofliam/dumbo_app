**free

ctl-opt dftactgrp(*no);

dcl-pi P1225;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P474.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'

dcl-ds T970 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T970 FROM T970 LIMIT 1;

theCharVar = 'Hello from P1225';
dsply theCharVar;
P278();
P474();
P218();
return;