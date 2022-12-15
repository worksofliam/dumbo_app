**free

ctl-opt dftactgrp(*no);

dcl-pi P582;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P340.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P574.rpgleinc'

dcl-ds T245 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T245 FROM T245 LIMIT 1;

theCharVar = 'Hello from P582';
dsply theCharVar;
P340();
P64();
P574();
return;