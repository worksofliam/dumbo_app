**free

ctl-opt dftactgrp(*no);

dcl-pi P3154;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P275.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P821.rpgleinc'

dcl-ds T1080 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1080 FROM T1080 LIMIT 1;

theCharVar = 'Hello from P3154';
dsply theCharVar;
P275();
P354();
P821();
return;