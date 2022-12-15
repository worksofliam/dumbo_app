**free

ctl-opt dftactgrp(*no);

dcl-pi P3600;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3315.rpgleinc'
/copy 'qrpgleref/P2242.rpgleinc'
/copy 'qrpgleref/P397.rpgleinc'

dcl-ds T731 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T731 FROM T731 LIMIT 1;

theCharVar = 'Hello from P3600';
dsply theCharVar;
P3315();
P2242();
P397();
return;