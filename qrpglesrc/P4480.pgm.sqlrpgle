**free

ctl-opt dftactgrp(*no);

dcl-pi P4480;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1095.rpgleinc'
/copy 'qrpgleref/P1036.rpgleinc'
/copy 'qrpgleref/P990.rpgleinc'

dcl-ds T1114 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1114 FROM T1114 LIMIT 1;

theCharVar = 'Hello from P4480';
dsply theCharVar;
P1095();
P1036();
P990();
return;