**free

ctl-opt dftactgrp(*no);

dcl-pi P3701;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1046.rpgleinc'
/copy 'qrpgleref/P727.rpgleinc'
/copy 'qrpgleref/P3657.rpgleinc'

dcl-ds T1151 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1151 FROM T1151 LIMIT 1;

theCharVar = 'Hello from P3701';
dsply theCharVar;
P1046();
P727();
P3657();
return;