**free

ctl-opt dftactgrp(*no);

dcl-pi P5167;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3094.rpgleinc'
/copy 'qrpgleref/P4458.rpgleinc'
/copy 'qrpgleref/P4514.rpgleinc'

dcl-ds T664 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T664 FROM T664 LIMIT 1;

theCharVar = 'Hello from P5167';
dsply theCharVar;
P3094();
P4458();
P4514();
return;