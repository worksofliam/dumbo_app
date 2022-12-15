**free

ctl-opt dftactgrp(*no);

dcl-pi P725;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P410.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'

dcl-ds T1184 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1184 FROM T1184 LIMIT 1;

theCharVar = 'Hello from P725';
dsply theCharVar;
P410();
P85();
P122();
return;