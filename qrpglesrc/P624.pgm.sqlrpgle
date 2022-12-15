**free

ctl-opt dftactgrp(*no);

dcl-pi P624;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P370.rpgleinc'

dcl-ds T1140 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1140 FROM T1140 LIMIT 1;

theCharVar = 'Hello from P624';
dsply theCharVar;
P11();
P404();
P370();
return;