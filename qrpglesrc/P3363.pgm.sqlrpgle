**free

ctl-opt dftactgrp(*no);

dcl-pi P3363;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P975.rpgleinc'
/copy 'qrpgleref/P2710.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'

dcl-ds T171 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T171 FROM T171 LIMIT 1;

theCharVar = 'Hello from P3363';
dsply theCharVar;
P975();
P2710();
P176();
return;