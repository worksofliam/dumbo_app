**free

ctl-opt dftactgrp(*no);

dcl-pi P1081;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1051.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P545.rpgleinc'

dcl-ds T1063 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1063 FROM T1063 LIMIT 1;

theCharVar = 'Hello from P1081';
dsply theCharVar;
P1051();
P339();
P545();
return;