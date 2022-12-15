**free

ctl-opt dftactgrp(*no);

dcl-pi P3614;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3113.rpgleinc'
/copy 'qrpgleref/P3228.rpgleinc'
/copy 'qrpgleref/P435.rpgleinc'

dcl-ds T1241 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1241 FROM T1241 LIMIT 1;

theCharVar = 'Hello from P3614';
dsply theCharVar;
P3113();
P3228();
P435();
return;