**free

ctl-opt dftactgrp(*no);

dcl-pi P662;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P433.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'

dcl-ds T700 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T700 FROM T700 LIMIT 1;

theCharVar = 'Hello from P662';
dsply theCharVar;
P433();
P281();
P424();
return;