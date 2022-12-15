**free

ctl-opt dftactgrp(*no);

dcl-pi P3880;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2867.rpgleinc'
/copy 'qrpgleref/P3033.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'

dcl-ds T1622 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1622 FROM T1622 LIMIT 1;

theCharVar = 'Hello from P3880';
dsply theCharVar;
P2867();
P3033();
P235();
return;