**free

ctl-opt dftactgrp(*no);

dcl-pi P3888;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P916.rpgleinc'
/copy 'qrpgleref/P373.rpgleinc'
/copy 'qrpgleref/P3357.rpgleinc'

dcl-ds T653 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T653 FROM T653 LIMIT 1;

theCharVar = 'Hello from P3888';
dsply theCharVar;
P916();
P373();
P3357();
return;